<?php

/**
 * Description of HashPage
 *
 * @author denz
 */
class HashPage extends Page {
	private static $db = array(
		'Url' => 'Varchar(40000)',
	);
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', TextField::create('Url', 'URL'));
		$fields->removeByName('Content');
		$fields->removeByName('MenuTitle');
		return $fields;
	}
	public function onBeforeWrite() {
		parent::onBeforeWrite();
		//print_r($this);die();
		$urlSegment = $this->calculateHash($this->Url);
		$this->URLSegment = $urlSegment;
		$this->Title = $this->getPageTitle();
	}
	private function calculateHash($url) {
		$content = file_get_contents($url);
		return sha1($content);
	}
	private function getPageTitle() {
		$content = file_get_contents($this->Url);
		$title = $this->Title;
		if (preg_match('#<title>([^<]*)</title>#i', $content, $matches)) {
			$title = $matches[1];
		}
		return $title;
	}
	public function IsSame() {
		$urlSegment = $this->URLSegment;
		$newHash = $this->calculateHash($this->Url);
		return $urlSegment === $newHash;
	}
}

class HashPage_Controller extends Page_Controller {
	
}
